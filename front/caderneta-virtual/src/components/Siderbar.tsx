// src/components/Sidebar.tsx
export default function Sidebar() {
    return (
      <aside className="w-64 h-screen bg-gray-100 p-6">
        <h2 className="text-xl font-bold mb-6">CADERNETA VIRTUAL</h2>
        <ul className="space-y-4">
          <li>Produtos</li>
          <li>Vendas</li>
          <li>Consórcios</li>
          <li>Vendas</li>
          <li>Categorias</li>
          <li>Usuários</li>
          <li className="text-red-500 mt-10">SAIR</li>
        </ul>
      </aside>
    );
  }
  