// This is a generated file. Not intended for manual editing.
package org.ziglang.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static org.ziglang.psi.ZigLangTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import org.ziglang.psi.*;

public class ZigPrimaryExprImpl extends ASTWrapperPsiElement implements ZigPrimaryExpr {

  public ZigPrimaryExprImpl(@NotNull ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZigVisitor visitor) {
    visitor.visitPrimaryExpr(this);
  }

  @Override
  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZigVisitor) accept((ZigVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZigAsmExpr getAsmExpr() {
    return findChildByClass(ZigAsmExpr.class);
  }

  @Override
  @Nullable
  public ZigBlock getBlock() {
    return findChildByClass(ZigBlock.class);
  }

  @Override
  @Nullable
  public ZigBlockLabel getBlockLabel() {
    return findChildByClass(ZigBlockLabel.class);
  }

  @Override
  @Nullable
  public ZigBreakLabel getBreakLabel() {
    return findChildByClass(ZigBreakLabel.class);
  }

  @Override
  @Nullable
  public ZigCurlySuffixExpr getCurlySuffixExpr() {
    return findChildByClass(ZigCurlySuffixExpr.class);
  }

  @Override
  @Nullable
  public ZigExpr getExpr() {
    return findChildByClass(ZigExpr.class);
  }

  @Override
  @Nullable
  public ZigIfExpr getIfExpr() {
    return findChildByClass(ZigIfExpr.class);
  }

  @Override
  @Nullable
  public ZigLoopExpr getLoopExpr() {
    return findChildByClass(ZigLoopExpr.class);
  }

}
