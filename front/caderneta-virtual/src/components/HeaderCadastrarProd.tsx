import Link from "next/link";

// src/components/Header.tsx
export default function Header() {
    return (
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-2xl font-bold">Cadastrar Produto</h1>
        <div className="flex items-center gap-4">
          <span>{'<nome de usuário>'}</span>       
        </div>
      </div>
    );
  }
  