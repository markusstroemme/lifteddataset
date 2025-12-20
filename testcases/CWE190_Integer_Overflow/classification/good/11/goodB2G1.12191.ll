@global_var_8f6c8 = external constant [10 x i8]
@global_var_8f6d2 = external constant [21 x i8]
@global_var_8f6e8 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_479d5:
  %stack_var_-72.1.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_47ade, label %dec_label_pc_47a09

dec_label_pc_47a09:                               ; preds = %dec_label_pc_479d5
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_47ade, label %dec_label_pc_47a31

dec_label_pc_47a31:                               ; preds = %dec_label_pc_47a09
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_8f6c8)
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_47ad4, label %dec_label_pc_47a88

dec_label_pc_47a88:                               ; preds = %dec_label_pc_47a31
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_47ad4, label %dec_label_pc_47aaf

dec_label_pc_47aaf:                               ; preds = %dec_label_pc_47a88
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_47ad4

dec_label_pc_47ad4:                               ; preds = %dec_label_pc_47a31, %dec_label_pc_47aaf, %dec_label_pc_47a88
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.1.reg2mem, align 4
  br label %dec_label_pc_47ade

dec_label_pc_47ade:                               ; preds = %dec_label_pc_47a09, %dec_label_pc_47ad4, %dec_label_pc_479d5
  %22 = call i32 @globalReturnsFalse()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_47afd, label %dec_label_pc_47aec

dec_label_pc_47aec:                               ; preds = %dec_label_pc_47ade
  call void @printLine(ptr @global_var_8f6d2)
  br label %dec_label_pc_47b3d

dec_label_pc_47afd:                               ; preds = %dec_label_pc_47ade
  %stack_var_-72.1.reload = load i32, ptr %stack_var_-72.1.reg2mem, align 4
  %stack_var_-72.1.off = add i32 %stack_var_-72.1.reload, 46339
  %24 = icmp ugt i32 %stack_var_-72.1.off, 92678
  br i1 %24, label %dec_label_pc_47b2e, label %dec_label_pc_47b18

dec_label_pc_47b18:                               ; preds = %dec_label_pc_47afd
  %25 = mul i32 %stack_var_-72.1.reload, %stack_var_-72.1.reload
  call void @printIntLine(i32 %25)
  br label %dec_label_pc_47b3d

dec_label_pc_47b2e:                               ; preds = %dec_label_pc_47afd
  call void @printLine(ptr @global_var_8f6e8)
  br label %dec_label_pc_47b3d

dec_label_pc_47b3d:                               ; preds = %dec_label_pc_47b2e, %dec_label_pc_47b18, %dec_label_pc_47aec
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_47b52, label %dec_label_pc_47b4d

dec_label_pc_47b4d:                               ; preds = %dec_label_pc_47b3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_47b52

dec_label_pc_47b52:                               ; preds = %dec_label_pc_47b4d, %dec_label_pc_47b3d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_77a9b:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_77aaa:
  ret i32 0
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

