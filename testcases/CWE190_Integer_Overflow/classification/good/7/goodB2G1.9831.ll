@global_var_86808 = external constant [3 x i8]
@global_var_8680b = external constant [21 x i8]
@global_var_86820 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc054 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3660c:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_bc054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_3665b, label %dec_label_pc_36639

dec_label_pc_36639:                               ; preds = %dec_label_pc_3660c
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_86808, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc054, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_3665b

dec_label_pc_3665b:                               ; preds = %dec_label_pc_36639, %dec_label_pc_3660c
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_36677, label %dec_label_pc_36666

dec_label_pc_36666:                               ; preds = %dec_label_pc_3665b
  call void @printLine(ptr @global_var_8680b)
  br label %dec_label_pc_366ab

dec_label_pc_36677:                               ; preds = %dec_label_pc_3665b
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %dec_label_pc_3669c, label %dec_label_pc_36681

dec_label_pc_36681:                               ; preds = %dec_label_pc_36677
  %10 = mul i64 %7, 4294967296
  %sext = add i64 %10, 4294967296
  %11 = ashr exact i64 %sext, 32
  store i64 %11, ptr %stack_var_-24, align 8
  %12 = trunc i64 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_366ab

dec_label_pc_3669c:                               ; preds = %dec_label_pc_36677
  call void @printLine(ptr @global_var_86820)
  br label %dec_label_pc_366ab

dec_label_pc_366ab:                               ; preds = %dec_label_pc_3669c, %dec_label_pc_36681, %dec_label_pc_36666
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_366c0, label %dec_label_pc_366bb

dec_label_pc_366bb:                               ; preds = %dec_label_pc_366ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_366c0

dec_label_pc_366c0:                               ; preds = %dec_label_pc_366bb, %dec_label_pc_366ab
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

