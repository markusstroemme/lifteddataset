@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2629d:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 400)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = inttoptr i64 %1 to ptr
  store i32 5, ptr %2, align 4
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_262d8.dec_label_pc_262d8_crit_edge

dec_label_pc_262d8.dec_label_pc_262d8_crit_edge:  ; preds = %dec_label_pc_2629d, %dec_label_pc_262d8.dec_label_pc_262d8_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load i64, ptr %stack_var_-32, align 8
  %3 = mul i64 %.reload, 4
  %4 = add i64 %3, %.pre
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_262f9, label %dec_label_pc_262d8.dec_label_pc_262d8_crit_edge

dec_label_pc_262f9:                               ; preds = %dec_label_pc_262d8.dec_label_pc_262d8_crit_edge
  %7 = call i64 @anon1(ptr nonnull %stack_var_-32)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2631a, label %dec_label_pc_26315

dec_label_pc_26315:                               ; preds = %dec_label_pc_262f9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2631a

dec_label_pc_2631a:                               ; preds = %dec_label_pc_26315, %dec_label_pc_262f9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_263f8:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

