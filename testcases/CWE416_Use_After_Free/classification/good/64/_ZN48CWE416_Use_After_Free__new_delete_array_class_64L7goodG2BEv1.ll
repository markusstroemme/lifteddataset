@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1fefe:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-32, align 8
  store i32 1, ptr %2, align 4
  %3 = load ptr, ptr %stack_var_-32, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_1ff39.dec_label_pc_1ff39_crit_edge

dec_label_pc_1ff39.dec_label_pc_1ff39_crit_edge:  ; preds = %dec_label_pc_1fefe, %dec_label_pc_1ff39.dec_label_pc_1ff39_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-32, align 8
  %7 = ptrtoint ptr %.pre to i64
  %8 = mul i64 %.reload, 8
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  %11 = load ptr, ptr %stack_var_-32, align 8
  %12 = ptrtoint ptr %11 to i64
  %13 = or i64 %8, 4
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 2, ptr %15, align 4
  %16 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ff70, label %dec_label_pc_1ff39.dec_label_pc_1ff39_crit_edge

dec_label_pc_1ff70:                               ; preds = %dec_label_pc_1ff39.dec_label_pc_1ff39_crit_edge
  %17 = bitcast ptr %stack_var_-32 to ptr
  %18 = call i64 @anon1(ptr nonnull %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_1ff91, label %dec_label_pc_1ff8c

dec_label_pc_1ff8c:                               ; preds = %dec_label_pc_1ff70
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1ff91

dec_label_pc_1ff91:                               ; preds = %dec_label_pc_1ff8c, %dec_label_pc_1ff70
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_20085:
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

