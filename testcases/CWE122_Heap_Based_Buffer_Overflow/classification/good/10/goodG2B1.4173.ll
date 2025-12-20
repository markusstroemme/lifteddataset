@global_var_b54d8 = external constant [32 x i8]
@global_var_b54f8 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec070 = external local_unnamed_addr global i32
@global_var_ec348 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_29a9d:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_ec348, align 4
  %1 = icmp eq i32 %0, 0
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_29ad2, label %dec_label_pc_29aba

dec_label_pc_29aba:                               ; preds = %dec_label_pc_29a9d
  call void @printLine(ptr @global_var_b54f8)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_29ad2

dec_label_pc_29ad2:                               ; preds = %dec_label_pc_29a9d, %dec_label_pc_29aba
  %2 = load i32, ptr @global_var_ec070, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_29b99, label %dec_label_pc_29ae0

dec_label_pc_29ae0:                               ; preds = %dec_label_pc_29ad2
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_29b08, label %dec_label_pc_29af5

dec_label_pc_29af5:                               ; preds = %dec_label_pc_29ae0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_29b08:                               ; preds = %dec_label_pc_29ae0, %dec_label_pc_29b08
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_29b2c, label %dec_label_pc_29b08

dec_label_pc_29b2c:                               ; preds = %dec_label_pc_29b08
  %11 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %11, label %dec_label_pc_29b7e, label %dec_label_pc_29b32

dec_label_pc_29b32:                               ; preds = %dec_label_pc_29b2c
  %12 = sext i32 %stack_var_-24.0.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_29b55

dec_label_pc_29b55:                               ; preds = %dec_label_pc_29b55, %dec_label_pc_29b32
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_29b8d, label %dec_label_pc_29b55

dec_label_pc_29b7e:                               ; preds = %dec_label_pc_29b2c
  call void @printLine(ptr @global_var_b54d8)
  br label %dec_label_pc_29b8d

dec_label_pc_29b8d:                               ; preds = %dec_label_pc_29b55, %dec_label_pc_29b7e
  call void @free(ptr %4)
  br label %dec_label_pc_29b99

dec_label_pc_29b99:                               ; preds = %dec_label_pc_29b8d, %dec_label_pc_29ad2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

