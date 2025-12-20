@global_var_84fa0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_30c69:
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_30deb, label %dec_label_pc_30cc7

dec_label_pc_30cc7:                               ; preds = %dec_label_pc_30c69
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_30da0.thread7, label %dec_label_pc_30d13

dec_label_pc_30d13:                               ; preds = %dec_label_pc_30cc7
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_30da0.thread7, label %dec_label_pc_30d27

dec_label_pc_30d27:                               ; preds = %dec_label_pc_30d13
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_30da0.thread7, label %dec_label_pc_30d44

dec_label_pc_30d44:                               ; preds = %dec_label_pc_30d27
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_30db9, label %dec_label_pc_30d6b

dec_label_pc_30d6b:                               ; preds = %dec_label_pc_30d44
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_30db9

dec_label_pc_30da0.thread7:                       ; preds = %dec_label_pc_30d27, %dec_label_pc_30d13, %dec_label_pc_30cc7
  %22 = call i32 @close(i32 %1)
  br label %dec_label_pc_30deb

dec_label_pc_30db9:                               ; preds = %dec_label_pc_30d44, %dec_label_pc_30d6b
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  %25 = icmp slt i32 %stack_var_-76.0.ph.reload, 1
  br i1 %25, label %dec_label_pc_30deb, label %dec_label_pc_30dbf

dec_label_pc_30dbf:                               ; preds = %dec_label_pc_30db9
  %26 = icmp sgt i32 %stack_var_-76.0.ph.reload, 1073741822
  br i1 %26, label %dec_label_pc_30ddc, label %dec_label_pc_30dc8

dec_label_pc_30dc8:                               ; preds = %dec_label_pc_30dbf
  %27 = mul i32 %stack_var_-76.0.ph.reload, 2
  call void @printIntLine(i32 %27)
  br label %dec_label_pc_30deb

dec_label_pc_30ddc:                               ; preds = %dec_label_pc_30dbf
  call void @printLine(ptr @global_var_84fa0)
  br label %dec_label_pc_30deb

dec_label_pc_30deb:                               ; preds = %dec_label_pc_30c69, %dec_label_pc_30da0.thread7, %dec_label_pc_30ddc, %dec_label_pc_30dc8, %dec_label_pc_30db9
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_30e00, label %dec_label_pc_30dfb

dec_label_pc_30dfb:                               ; preds = %dec_label_pc_30deb
  call void @__stack_chk_fail()
  br label %dec_label_pc_30e00

dec_label_pc_30e00:                               ; preds = %dec_label_pc_30dfb, %dec_label_pc_30deb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
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

