@global_var_b7b78 = external constant [21 x i8]
@global_var_b7b90 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef300 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_34b0e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-92.1.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i32, ptr @global_var_ef080, align 4
  %3 = icmp eq i32 %2, 0
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_34c56, label %dec_label_pc_34b3e

dec_label_pc_34b3e:                               ; preds = %dec_label_pc_34b0e
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_34c56, label %dec_label_pc_34b6d

dec_label_pc_34b6d:                               ; preds = %dec_label_pc_34b3e
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_34c46.thread8, label %dec_label_pc_34bb9

dec_label_pc_34bb9:                               ; preds = %dec_label_pc_34b6d
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_34c46.thread8, label %dec_label_pc_34bcd

dec_label_pc_34bcd:                               ; preds = %dec_label_pc_34bb9
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_34c46.thread8, label %dec_label_pc_34bea

dec_label_pc_34bea:                               ; preds = %dec_label_pc_34bcd
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_34c4c, label %dec_label_pc_34c11

dec_label_pc_34c11:                               ; preds = %dec_label_pc_34bea
  %18 = sext i32 %15 to i64
  %19 = add i64 %0, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_34c4c

dec_label_pc_34c46.thread8:                       ; preds = %dec_label_pc_34bcd, %dec_label_pc_34bb9, %dec_label_pc_34b6d
  %24 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-92.1.reg2mem, align 4
  br label %dec_label_pc_34c56

dec_label_pc_34c4c:                               ; preds = %dec_label_pc_34c11, %dec_label_pc_34bea
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %4)
  %26 = call i32 @close(i32 %13)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.1.reg2mem, align 4
  br label %dec_label_pc_34c56

dec_label_pc_34c56:                               ; preds = %dec_label_pc_34b3e, %dec_label_pc_34c46.thread8, %dec_label_pc_34c4c, %dec_label_pc_34b0e
  %27 = load i32, ptr @global_var_ef300, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_34c71, label %dec_label_pc_34c60

dec_label_pc_34c60:                               ; preds = %dec_label_pc_34c56
  call void @printLine(ptr @global_var_b7b78)
  br label %dec_label_pc_34ce8

dec_label_pc_34c71:                               ; preds = %dec_label_pc_34c56
  %stack_var_-92.1.reload = load i32, ptr %stack_var_-92.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %29 = icmp ugt i32 %stack_var_-92.1.reload, 9
  br i1 %29, label %dec_label_pc_34cd7, label %dec_label_pc_34ca5

dec_label_pc_34ca5:                               ; preds = %dec_label_pc_34c71
  %30 = sext i32 %stack_var_-92.1.reload to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %0, -64
  %33 = add i64 %31, %32
  %34 = inttoptr i64 %33 to ptr
  store i32 1, ptr %34, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_34cbb

dec_label_pc_34cbb:                               ; preds = %dec_label_pc_34cbb, %dec_label_pc_34ca5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %35 = mul i64 %indvars.iv.reload, 4
  %36 = add i64 %35, %32
  %37 = inttoptr i64 %36 to ptr
  %38 = load i32, ptr %37, align 4
  call void @printIntLine(i32 %38)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_34ce8, label %dec_label_pc_34cbb

dec_label_pc_34cd7:                               ; preds = %dec_label_pc_34c71
  call void @printLine(ptr @global_var_b7b90)
  br label %dec_label_pc_34ce8

dec_label_pc_34ce8:                               ; preds = %dec_label_pc_34cbb, %dec_label_pc_34cd7, %dec_label_pc_34c60
  %39 = call i64 @__readfsqword(i64 40)
  %40 = icmp eq i64 %1, %39
  br i1 %40, label %dec_label_pc_34cfd, label %dec_label_pc_34cf8

dec_label_pc_34cf8:                               ; preds = %dec_label_pc_34ce8
  call void @__stack_chk_fail()
  br label %dec_label_pc_34cfd

dec_label_pc_34cfd:                               ; preds = %dec_label_pc_34cf8, %dec_label_pc_34ce8
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

