@global_var_bbc58 = external constant [10 x i8]
@global_var_bbc88 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_72e5d:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_72f61.thread, label %dec_label_pc_72eaf

dec_label_pc_72f61.thread:                        ; preds = %dec_label_pc_72e5d
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_72fd0

dec_label_pc_72eaf:                               ; preds = %dec_label_pc_72e5d
  %2 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %3 = call i32 @inet_addr(ptr @global_var_bbc58)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_72f61.thread6, label %dec_label_pc_72f0b

dec_label_pc_72f0b:                               ; preds = %dec_label_pc_72eaf
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_72f61.thread6, label %dec_label_pc_72f61

dec_label_pc_72f61.thread6:                       ; preds = %dec_label_pc_72f0b, %dec_label_pc_72eaf
  %13 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_72fd0

dec_label_pc_72f61:                               ; preds = %dec_label_pc_72f0b
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %10 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  %21 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  %22 = icmp ugt i32 %20, 9
  br i1 %22, label %dec_label_pc_72fd0, label %dec_label_pc_72f9e

dec_label_pc_72f9e:                               ; preds = %dec_label_pc_72f61
  %23 = sext i32 %20 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %14, -64
  %26 = add i64 %24, %25
  %27 = inttoptr i64 %26 to ptr
  store i32 1, ptr %27, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_72fb4

dec_label_pc_72fb4:                               ; preds = %dec_label_pc_72fb4, %dec_label_pc_72f9e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %28 = mul i64 %indvars.iv.reload, 4
  %29 = add i64 %28, %25
  %30 = inttoptr i64 %29 to ptr
  %31 = load i32, ptr %30, align 4
  call void @printIntLine(i32 %31)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_72fdf, label %dec_label_pc_72fb4

dec_label_pc_72fd0:                               ; preds = %dec_label_pc_72f61.thread6, %dec_label_pc_72f61.thread, %dec_label_pc_72f61
  call void @printLine(ptr @global_var_bbc88)
  br label %dec_label_pc_72fdf

dec_label_pc_72fdf:                               ; preds = %dec_label_pc_72fb4, %dec_label_pc_72fd0
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_72ff4, label %dec_label_pc_72fef

dec_label_pc_72fef:                               ; preds = %dec_label_pc_72fdf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_72ff4

dec_label_pc_72ff4:                               ; preds = %dec_label_pc_72fef, %dec_label_pc_72fdf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

