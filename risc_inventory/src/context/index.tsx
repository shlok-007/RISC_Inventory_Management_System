'use client';

import { createContext, useState, useContext, useEffect } from 'react';

interface UserData {
  memberId: number;
  firstName: string;
  lastName: string;
  email: string;
  role: string;
}

const UserContext = createContext<{
  user: UserData | undefined;
  setUser: (user: UserData | undefined) => void;
}>({
  user: undefined,
  setUser: () => {},
});

export function UserContextWrapper({ children }: { children: React.ReactNode }) {
  const [user, setUser] = useState<UserData | undefined>(undefined);

  useEffect(() => {
    if (typeof window !== 'undefined') {
      const userData = localStorage.getItem('userData');
      if (userData) {
        setUser(JSON.parse(userData));
      }
    }
  }, []);

  return (
    <UserContext.Provider value={{ user, setUser }}>
      {children}
    </UserContext.Provider>
  );
}

export function useUserContext() {
  return useContext(UserContext);
}