@global_var_b7b90 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_34cff:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-92.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_34ec8, label %dec_label_pc_34d2f

dec_label_pc_34d2f:                               ; preds = %dec_label_pc_34cff
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-92.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_34e47, label %dec_label_pc_34d5e

dec_label_pc_34d5e:                               ; preds = %dec_label_pc_34d2f
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-72 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_34e37.thread8, label %dec_label_pc_34daa

dec_label_pc_34daa:                               ; preds = %dec_label_pc_34d5e
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_34e37.thread8, label %dec_label_pc_34dbe

dec_label_pc_34dbe:                               ; preds = %dec_label_pc_34daa
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_34e37.thread8, label %dec_label_pc_34ddb

dec_label_pc_34ddb:                               ; preds = %dec_label_pc_34dbe
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_34e3d, label %dec_label_pc_34e02

dec_label_pc_34e02:                               ; preds = %dec_label_pc_34ddb
  %18 = sext i32 %15 to i64
  %19 = add i64 %3, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_34e3d

dec_label_pc_34e37.thread8:                       ; preds = %dec_label_pc_34dbe, %dec_label_pc_34daa, %dec_label_pc_34d5e
  %24 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-92.1.ph.reg2mem, align 4
  br label %dec_label_pc_34e47

dec_label_pc_34e3d:                               ; preds = %dec_label_pc_34e02, %dec_label_pc_34ddb
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %4)
  %26 = call i32 @close(i32 %13)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.1.ph.reg2mem, align 4
  br label %dec_label_pc_34e47

dec_label_pc_34e47:                               ; preds = %dec_label_pc_34d2f, %dec_label_pc_34e37.thread8, %dec_label_pc_34e3d
  %.pr = load i32, ptr @global_var_ef080, align 4
  %27 = icmp eq i32 %.pr, 0
  br i1 %27, label %dec_label_pc_34ec8, label %dec_label_pc_34e51

dec_label_pc_34e51:                               ; preds = %dec_label_pc_34e47
  %stack_var_-92.1.ph.reload = load i32, ptr %stack_var_-92.1.ph.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %28 = icmp ugt i32 %stack_var_-92.1.ph.reload, 9
  br i1 %28, label %dec_label_pc_34eb7, label %dec_label_pc_34e85

dec_label_pc_34e85:                               ; preds = %dec_label_pc_34e51
  %29 = sext i32 %stack_var_-92.1.ph.reload to i64
  %30 = mul i64 %29, 4
  %31 = add i64 %3, -64
  %32 = add i64 %30, %31
  %33 = inttoptr i64 %32 to ptr
  store i32 1, ptr %33, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_34e9b

dec_label_pc_34e9b:                               ; preds = %dec_label_pc_34e9b, %dec_label_pc_34e85
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %34 = mul i64 %indvars.iv.reload, 4
  %35 = add i64 %34, %31
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 4
  call void @printIntLine(i32 %37)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_34ec8, label %dec_label_pc_34e9b

dec_label_pc_34eb7:                               ; preds = %dec_label_pc_34e51
  call void @printLine(ptr @global_var_b7b90)
  br label %dec_label_pc_34ec8

dec_label_pc_34ec8:                               ; preds = %dec_label_pc_34e9b, %dec_label_pc_34cff, %dec_label_pc_34eb7, %dec_label_pc_34e47
  %38 = call i64 @__readfsqword(i64 40)
  %39 = icmp eq i64 %0, %38
  br i1 %39, label %dec_label_pc_34edd, label %dec_label_pc_34ed8

dec_label_pc_34ed8:                               ; preds = %dec_label_pc_34ec8
  call void @__stack_chk_fail()
  br label %dec_label_pc_34edd

dec_label_pc_34edd:                               ; preds = %dec_label_pc_34ed8, %dec_label_pc_34ec8
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

