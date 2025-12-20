@global_var_b9a40 = external constant [10 x i8]
@global_var_b9a50 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_7d2ca:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_7d3c6, label %dec_label_pc_7d311

dec_label_pc_7d311:                               ; preds = %dec_label_pc_7d2ca
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b9a40)
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_7d3bc, label %dec_label_pc_7d36d

dec_label_pc_7d36d:                               ; preds = %dec_label_pc_7d311
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_7d3bc, label %dec_label_pc_7d394

dec_label_pc_7d394:                               ; preds = %dec_label_pc_7d36d
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %arg1, align 4
  br label %dec_label_pc_7d3bc

dec_label_pc_7d3bc:                               ; preds = %dec_label_pc_7d36d, %dec_label_pc_7d394, %dec_label_pc_7d311
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_7d3c6

dec_label_pc_7d3c6:                               ; preds = %dec_label_pc_7d2ca, %dec_label_pc_7d3bc
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_7d3db, label %dec_label_pc_7d3d6

dec_label_pc_7d3d6:                               ; preds = %dec_label_pc_7d3c6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d3db

dec_label_pc_7d3db:                               ; preds = %dec_label_pc_7d3d6, %dec_label_pc_7d3c6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_7d3dd:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %5, label %dec_label_pc_7d433, label %dec_label_pc_7d420

dec_label_pc_7d420:                               ; preds = %dec_label_pc_7d3dd
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7d433:                               ; preds = %dec_label_pc_7d3dd, %dec_label_pc_7d433
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %6 = mul i64 %indvars.iv4.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_7d457, label %dec_label_pc_7d433

dec_label_pc_7d457:                               ; preds = %dec_label_pc_7d433
  %9 = load i32, ptr %stack_var_-32, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %dec_label_pc_7d4aa, label %dec_label_pc_7d45e

dec_label_pc_7d45e:                               ; preds = %dec_label_pc_7d457
  %11 = sext i32 %9 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7d481

dec_label_pc_7d481:                               ; preds = %dec_label_pc_7d481, %dec_label_pc_7d45e
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %3
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7d4b9, label %dec_label_pc_7d481

dec_label_pc_7d4aa:                               ; preds = %dec_label_pc_7d457
  call void @printLine(ptr @global_var_b9a50)
  br label %dec_label_pc_7d4b9

dec_label_pc_7d4b9:                               ; preds = %dec_label_pc_7d481, %dec_label_pc_7d4aa
  call void @free(ptr %2)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_7d4da, label %dec_label_pc_7d4d5

dec_label_pc_7d4d5:                               ; preds = %dec_label_pc_7d4b9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d4da

dec_label_pc_7d4da:                               ; preds = %dec_label_pc_7d4d5, %dec_label_pc_7d4b9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

