import React, { createContext, useContext, useState } from 'react';
import { useRouter } from 'next/router';

interface AuthContextType {
  isLoggedIn: boolean;
  email: string | null;
  name: string | null;
  login: (email: string, name: string) => void;
  logout: () => void;
}

const AuthContext = createContext<AuthContextType>({
  isLoggedIn: false,
  email: null,
  name: null,
  login: () => {},
  logout: () => {},
});

export const useAuth = () => useContext(AuthContext);

export const AuthProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  const [isLoggedIn, setIsLoggedIn] = useState<boolean>(false);
  const [email, setEmail] = useState<string | null>(null);
  const [name, setName] = useState<string | null>(null);
  const router = useRouter();

  const login = (email: string, name: string) => {
    // Perform login logic here...
    setIsLoggedIn(true);
    setEmail(email);
    setName(name);
    router.push('/user/view-items'); // Redirect to dashboard after login
  };

  const logout = () => {
    // Perform logout logic here...
    setIsLoggedIn(false);
    setEmail(null);
    setName(null);
    router.push('/login'); // Redirect to login after logout
  };

  return (
    <AuthContext.Provider value={{ isLoggedIn, email, name, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};
