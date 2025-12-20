@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_62d49:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc054, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  %5 = zext i32 %2 to i64
  store i64 %5, ptr %rax.2.reg2mem, align 8
  br i1 %4, label %dec_label_pc_62e2c, label %dec_label_pc_62d7d

dec_label_pc_62d7d:                               ; preds = %dec_label_pc_62d49
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_62d94

dec_label_pc_62d94:                               ; preds = %dec_label_pc_62d94, %dec_label_pc_62d7d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_62dbe, label %dec_label_pc_62d94

dec_label_pc_62dbe:                               ; preds = %dec_label_pc_62d94
  %10 = add i64 %6, 28
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_62de1

dec_label_pc_62de1:                               ; preds = %dec_label_pc_62de1, %dec_label_pc_62dbe
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_62e19, label %dec_label_pc_62de1

dec_label_pc_62e19:                               ; preds = %dec_label_pc_62de1
  %16 = icmp eq i64 %6, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_62e2c, label %dec_label_pc_62e20

dec_label_pc_62e20:                               ; preds = %dec_label_pc_62e19
  %17 = inttoptr i64 %6 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_62e2c

dec_label_pc_62e2c:                               ; preds = %dec_label_pc_62e20, %dec_label_pc_62e19, %dec_label_pc_62d49
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

