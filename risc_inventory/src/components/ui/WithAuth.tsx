// components/WithAuth.tsx

import { useRouter } from 'next/router';
import { useEffect } from 'react';

const WithAuth = (WrappedComponent: React.FC) => {
  const AuthenticatedComponent: React.FC = () => {
    const router = useRouter();

    useEffect(() => {
      const userEmail = localStorage.getItem('userEmail');
      const userName = localStorage.getItem('userName');

      // If email and fullname are not present, redirect to login
      if (!userEmail || !userName) {
        router.push('/login');
      }
    }, []);

    return <WrappedComponent />;
  };

  return AuthenticatedComponent;
};

export default WithAuth;
