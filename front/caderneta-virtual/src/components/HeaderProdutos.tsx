import Link from "next/link";

// src/components/Header.tsx
export default function Header() {
    return (
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Todos os produtos</h1>
        <div className="flex items-center gap-4">
          <span>{'<nome de usuário>'}</span>       
          <Link href="../produtos/novo"><button className="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700">Novo</button></Link>
        </div>
      </div>
    );
  }
  