'use client'
import { createContext, useState, useContext } from 'react';

interface UserData {
    memberId: number;
    firstName: string;
    lastName: string;
    email: string;
    role: string;
}

const UserContext = createContext<{user: UserData | undefined, setUser: (user: UserData | undefined) => void}>({
    user: undefined,
    setUser: () => {}
});

export function UserContextWrapper({ children } : { children: React.ReactNode }) {
    const [user, setUser] = useState<UserData | undefined>(localStorage.getItem('userData') ? JSON.parse(localStorage.getItem('userData') as string) : undefined);
    
    return (
        <UserContext.Provider value={{user, setUser}}>
            {children}
        </UserContext.Provider>
    );
}

export function useUserContext() {
    return useContext(UserContext);
}