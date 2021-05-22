import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('Verifica se há um campo input de email na tela', () => {
  // Acessar os elementos da tela
  const { getByLabelText } = render(<App />);
  const inputEmail = getByLabelText('Email');

  // Fazer o teste
  expect(inputEmail).toBeInTheDocument();
  expect(inputEmail.type).toBe('email'); 
});

test('Verifica se há dois botões', () => {
  // Acessar os elementos da tela
  const { getAllByRole } = render(<App />);
  const button = getAllByRole('button');

  // Fazer o teste
  expect(button.length).toBe(2);
});

test('Verifica se há um botão \"Enviar\"', () => {
  // Acessar os elementos da tela
  const { getByTestId } = render(<App />);
  const button = getByTestId('id-send');

  // Fazer o teste
  expect(button).toBeInTheDocument();
  expect(button).toHaveValue('Enviar');
})

// Acessar os elementos da tela

// Interagir com eles (se houver necessidade)

// Fazer o teste
