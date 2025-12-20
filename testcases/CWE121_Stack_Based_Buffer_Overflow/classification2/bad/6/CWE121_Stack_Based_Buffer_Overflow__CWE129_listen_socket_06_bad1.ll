@global_var_b79d8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_32b1a:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_32c6c.thread, label %dec_label_pc_32b79

dec_label_pc_32b79:                               ; preds = %dec_label_pc_32b1a
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_32c52.thread7, label %dec_label_pc_32bc5

dec_label_pc_32bc5:                               ; preds = %dec_label_pc_32b79
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_32c52.thread7, label %dec_label_pc_32bd9

dec_label_pc_32bd9:                               ; preds = %dec_label_pc_32bc5
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_32c52.thread7, label %dec_label_pc_32bf6

dec_label_pc_32bf6:                               ; preds = %dec_label_pc_32bd9
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %14 = add i32 %13, 1
  %15 = icmp ult i32 %14, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %15, label %dec_label_pc_32c6c, label %dec_label_pc_32c1d

dec_label_pc_32c1d:                               ; preds = %dec_label_pc_32bf6
  %16 = sext i32 %13 to i64
  %17 = add i64 %12, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_32c6c

dec_label_pc_32c52.thread7:                       ; preds = %dec_label_pc_32bd9, %dec_label_pc_32bc5, %dec_label_pc_32b79
  %22 = call i32 @close(i32 %1)
  br label %dec_label_pc_32c6c.thread

dec_label_pc_32c6c.thread:                        ; preds = %dec_label_pc_32c52.thread7, %dec_label_pc_32b1a
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_32ccc

dec_label_pc_32c6c:                               ; preds = %dec_label_pc_32bf6, %dec_label_pc_32c1d
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i64 0, ptr %stack_var_-72, align 8
  %25 = icmp slt i32 %stack_var_-92.0.ph.reload, 0
  br i1 %25, label %dec_label_pc_32ccc, label %dec_label_pc_32c9a

dec_label_pc_32c9a:                               ; preds = %dec_label_pc_32c6c
  %26 = sext i32 %stack_var_-92.0.ph.reload to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %12, -64
  %29 = add i64 %27, %28
  %30 = inttoptr i64 %29 to ptr
  store i32 1, ptr %30, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_32cb0

dec_label_pc_32cb0:                               ; preds = %dec_label_pc_32cb0, %dec_label_pc_32c9a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %31 = mul i64 %indvars.iv.reload, 4
  %32 = add i64 %31, %28
  %33 = inttoptr i64 %32 to ptr
  %34 = load i32, ptr %33, align 4
  call void @printIntLine(i32 %34)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_32cdb, label %dec_label_pc_32cb0

dec_label_pc_32ccc:                               ; preds = %dec_label_pc_32c6c.thread, %dec_label_pc_32c6c
  call void @printLine(ptr @global_var_b79d8)
  br label %dec_label_pc_32cdb

dec_label_pc_32cdb:                               ; preds = %dec_label_pc_32cb0, %dec_label_pc_32ccc
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  br i1 %36, label %dec_label_pc_32cf0, label %dec_label_pc_32ceb

dec_label_pc_32ceb:                               ; preds = %dec_label_pc_32cdb
  call void @__stack_chk_fail()
  br label %dec_label_pc_32cf0

dec_label_pc_32cf0:                               ; preds = %dec_label_pc_32ceb, %dec_label_pc_32cdb
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

