@global_var_b7e20 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16
@global_var_ec21c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_4ea6d:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec21c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4eb49, label %dec_label_pc_4ea8a

dec_label_pc_4ea8a:                               ; preds = %dec_label_pc_4ea6d
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_4eab2, label %dec_label_pc_4ea9f

dec_label_pc_4ea9f:                               ; preds = %dec_label_pc_4ea8a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4eab2:                               ; preds = %dec_label_pc_4ea8a, %dec_label_pc_4eab2
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_4ead6, label %dec_label_pc_4eab2

dec_label_pc_4ead6:                               ; preds = %dec_label_pc_4eab2
  %9 = icmp ugt i32 %data, 9
  br i1 %9, label %dec_label_pc_4eb2e, label %dec_label_pc_4eae2

dec_label_pc_4eae2:                               ; preds = %dec_label_pc_4ead6
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4eb05

dec_label_pc_4eb05:                               ; preds = %dec_label_pc_4eb05, %dec_label_pc_4eae2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4eb3d, label %dec_label_pc_4eb05

dec_label_pc_4eb2e:                               ; preds = %dec_label_pc_4ead6
  call void @printLine(ptr @global_var_b7e20)
  br label %dec_label_pc_4eb3d

dec_label_pc_4eb3d:                               ; preds = %dec_label_pc_4eb05, %dec_label_pc_4eb2e
  call void @free(ptr %2)
  br label %dec_label_pc_4eb49

dec_label_pc_4eb49:                               ; preds = %dec_label_pc_4eb3d, %dec_label_pc_4ea6d
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_4eb4c:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4ec86, label %dec_label_pc_4eb9d

dec_label_pc_4eb9d:                               ; preds = %dec_label_pc_4eb4c
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4ec76.thread8, label %dec_label_pc_4ebe9

dec_label_pc_4ebe9:                               ; preds = %dec_label_pc_4eb9d
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4ec76.thread8, label %dec_label_pc_4ebfd

dec_label_pc_4ebfd:                               ; preds = %dec_label_pc_4ebe9
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4ec76.thread8, label %dec_label_pc_4ec1a

dec_label_pc_4ec1a:                               ; preds = %dec_label_pc_4ebfd
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_4ec7c, label %dec_label_pc_4ec41

dec_label_pc_4ec41:                               ; preds = %dec_label_pc_4ec1a
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_4ec7c

dec_label_pc_4ec76.thread8:                       ; preds = %dec_label_pc_4ebfd, %dec_label_pc_4ebe9, %dec_label_pc_4eb9d
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_4ec86

dec_label_pc_4ec7c:                               ; preds = %dec_label_pc_4ec41, %dec_label_pc_4ec1a
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_4ec86

dec_label_pc_4ec86:                               ; preds = %dec_label_pc_4eb4c, %dec_label_pc_4ec76.thread8, %dec_label_pc_4ec7c
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 1, ptr @global_var_ec21c, align 4
  call void @anon0(i32 %stack_var_-72.047.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_4ecaf, label %dec_label_pc_4ecaa

dec_label_pc_4ecaa:                               ; preds = %dec_label_pc_4ec86
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ecaf

dec_label_pc_4ecaf:                               ; preds = %dec_label_pc_4ecaa, %dec_label_pc_4ec86
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

