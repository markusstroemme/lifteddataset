@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23147:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-32, align 8
  %3 = inttoptr i64 %1 to ptr
  store i64 5, ptr %3, align 8
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_23182.dec_label_pc_23182_crit_edge

dec_label_pc_23182.dec_label_pc_23182_crit_edge:  ; preds = %dec_label_pc_23147, %dec_label_pc_23182.dec_label_pc_23182_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-32, align 8
  %4 = ptrtoint ptr %.pre to i64
  %5 = mul i64 %.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_231a4, label %dec_label_pc_23182.dec_label_pc_23182_crit_edge

dec_label_pc_231a4:                               ; preds = %dec_label_pc_23182.dec_label_pc_23182_crit_edge
  %9 = bitcast ptr %stack_var_-32 to ptr
  %10 = call i64 @anon1(ptr nonnull %9)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_231c5, label %dec_label_pc_231c0

dec_label_pc_231c0:                               ; preds = %dec_label_pc_231a4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_231c5

dec_label_pc_231c5:                               ; preds = %dec_label_pc_231c0, %dec_label_pc_231a4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_232a6:
  %0 = ptrtoint ptr %arg1 to i64
  call void @printLongLongLine(i64 %0)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

