@global_var_aed08 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5b4d7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_5b61b, label %dec_label_pc_5b528

dec_label_pc_5b528:                               ; preds = %dec_label_pc_5b4d7
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5b60b.thread4, label %dec_label_pc_5b579

dec_label_pc_5b579:                               ; preds = %dec_label_pc_5b528
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5b60b.thread4, label %dec_label_pc_5b592

dec_label_pc_5b592:                               ; preds = %dec_label_pc_5b579
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5b60b.thread4, label %dec_label_pc_5b5af

dec_label_pc_5b5af:                               ; preds = %dec_label_pc_5b592
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_5b611, label %dec_label_pc_5b5d6

dec_label_pc_5b5d6:                               ; preds = %dec_label_pc_5b5af
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  %26 = sext i32 %25 to i64
  store i64 %26, ptr %stack_var_-72, align 8
  br label %dec_label_pc_5b611

dec_label_pc_5b60b.thread4:                       ; preds = %dec_label_pc_5b592, %dec_label_pc_5b579, %dec_label_pc_5b528
  %27 = call i32 @close(i32 %1)
  br label %dec_label_pc_5b61b

dec_label_pc_5b611:                               ; preds = %dec_label_pc_5b5d6, %dec_label_pc_5b5af
  %28 = call i32 @close(i32 %1)
  %29 = call i32 @close(i32 %14)
  br label %dec_label_pc_5b61b

dec_label_pc_5b61b:                               ; preds = %dec_label_pc_5b4d7, %dec_label_pc_5b60b.thread4, %dec_label_pc_5b611
  %30 = bitcast ptr %stack_var_-72 to ptr
  %31 = call i64 @anon1(ptr nonnull %30)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_5b63c, label %dec_label_pc_5b637

dec_label_pc_5b637:                               ; preds = %dec_label_pc_5b61b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5b63c

dec_label_pc_5b63c:                               ; preds = %dec_label_pc_5b637, %dec_label_pc_5b61b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5b806:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i64, ptr %0, align 8
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_5b836

dec_label_pc_5b836:                               ; preds = %dec_label_pc_5b836, %dec_label_pc_5b806
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_5b85a, label %dec_label_pc_5b836

dec_label_pc_5b85a:                               ; preds = %dec_label_pc_5b836
  %7 = trunc i64 %1 to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_5b8ac, label %dec_label_pc_5b860

dec_label_pc_5b860:                               ; preds = %dec_label_pc_5b85a
  %sext = mul i64 %1, 4294967296
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %3, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5b883

dec_label_pc_5b883:                               ; preds = %dec_label_pc_5b883, %dec_label_pc_5b860
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5b8bb, label %dec_label_pc_5b883

dec_label_pc_5b8ac:                               ; preds = %dec_label_pc_5b85a
  call void @printLine(ptr @global_var_aed08)
  br label %dec_label_pc_5b8bb

dec_label_pc_5b8bb:                               ; preds = %dec_label_pc_5b883, %dec_label_pc_5b8ac
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_5b8ce, label %dec_label_pc_5b8c2

dec_label_pc_5b8c2:                               ; preds = %dec_label_pc_5b8bb
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %2, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_5b8ce

dec_label_pc_5b8ce:                               ; preds = %dec_label_pc_5b8c2, %dec_label_pc_5b8bb
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

