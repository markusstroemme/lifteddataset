@global_var_b5074 = external constant [10 x i8]
@global_var_b5080 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15a9c:
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x i32], align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = insertvalue [5 x i32] undef, i32 %1, 0
  store [5 x i32] %2, ptr %dataArray_-64, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %dataArray_-64, i64 0, i64 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_15b93, label %dec_label_pc_15ae6

dec_label_pc_15ae6:                               ; preds = %dec_label_pc_15a9c
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b5074)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %11, label %dec_label_pc_15b89, label %dec_label_pc_15b3d

dec_label_pc_15b3d:                               ; preds = %dec_label_pc_15ae6
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %14, label %dec_label_pc_15b89, label %dec_label_pc_15b83

dec_label_pc_15b83:                               ; preds = %dec_label_pc_15b3d
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %.pr = load i32, ptr %3, align 4
  %22 = icmp eq i32 %.pr, -1
  store i32 %.pr, ptr %.reg2mem, align 4
  br i1 %22, label %dec_label_pc_15b93, label %dec_label_pc_15b89

dec_label_pc_15b89:                               ; preds = %dec_label_pc_15b3d, %dec_label_pc_15ae6, %dec_label_pc_15b83
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = call i32 @close(i32 %.reload)
  br label %dec_label_pc_15b93

dec_label_pc_15b93:                               ; preds = %dec_label_pc_15a9c, %dec_label_pc_15b89, %dec_label_pc_15b83
  %24 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_15bba, label %dec_label_pc_15bb5

dec_label_pc_15bb5:                               ; preds = %dec_label_pc_15b93
  call void @__stack_chk_fail()
  br label %dec_label_pc_15bba

dec_label_pc_15bba:                               ; preds = %dec_label_pc_15bb5, %dec_label_pc_15b93
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_15d4d:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %stack_var_-8 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %dec_label_pc_15dd6, label %dec_label_pc_15da4

dec_label_pc_15da4:                               ; preds = %dec_label_pc_15d4d
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_15dba

dec_label_pc_15dba:                               ; preds = %dec_label_pc_15dba, %dec_label_pc_15da4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_15de5, label %dec_label_pc_15dba

dec_label_pc_15dd6:                               ; preds = %dec_label_pc_15d4d
  call void @printLine(ptr @global_var_b5080)
  br label %dec_label_pc_15de5

dec_label_pc_15de5:                               ; preds = %dec_label_pc_15dba, %dec_label_pc_15dd6
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_15dfa, label %dec_label_pc_15df5

dec_label_pc_15df5:                               ; preds = %dec_label_pc_15de5
  call void @__stack_chk_fail()
  br label %dec_label_pc_15dfa

dec_label_pc_15dfa:                               ; preds = %dec_label_pc_15df5, %dec_label_pc_15de5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

