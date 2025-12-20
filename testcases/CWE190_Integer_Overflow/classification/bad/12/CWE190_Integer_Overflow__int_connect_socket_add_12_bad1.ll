@global_var_8e0c0 = external constant [10 x i8]
@global_var_8e0d0 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_35ac9:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_35bdb, label %dec_label_pc_35afd

dec_label_pc_35afd:                               ; preds = %dec_label_pc_35ac9
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_35bdb, label %dec_label_pc_35b25

dec_label_pc_35b25:                               ; preds = %dec_label_pc_35afd
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_8e0c0)
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_35bc8, label %dec_label_pc_35b7c

dec_label_pc_35b7c:                               ; preds = %dec_label_pc_35b25
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_35bc8, label %dec_label_pc_35ba3

dec_label_pc_35ba3:                               ; preds = %dec_label_pc_35b7c
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_35bc8

dec_label_pc_35bc8:                               ; preds = %dec_label_pc_35b25, %dec_label_pc_35ba3, %dec_label_pc_35b7c
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_35bdb

dec_label_pc_35bdb:                               ; preds = %dec_label_pc_35afd, %dec_label_pc_35ac9, %dec_label_pc_35bc8
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %22 = call i32 @globalReturnsTrueOrFalse()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_35bfe, label %dec_label_pc_35be9

dec_label_pc_35be9:                               ; preds = %dec_label_pc_35bdb
  %24 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %24)
  br label %dec_label_pc_35c2b

dec_label_pc_35bfe:                               ; preds = %dec_label_pc_35bdb
  %25 = icmp eq i32 %stack_var_-76.1.reload, 2147483647
  br i1 %25, label %dec_label_pc_35c1c, label %dec_label_pc_35c07

dec_label_pc_35c07:                               ; preds = %dec_label_pc_35bfe
  %26 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_35c2b

dec_label_pc_35c1c:                               ; preds = %dec_label_pc_35bfe
  call void @printLine(ptr @global_var_8e0d0)
  br label %dec_label_pc_35c2b

dec_label_pc_35c2b:                               ; preds = %dec_label_pc_35c1c, %dec_label_pc_35c07, %dec_label_pc_35be9
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_35c40, label %dec_label_pc_35c3b

dec_label_pc_35c3b:                               ; preds = %dec_label_pc_35c2b
  call void @__stack_chk_fail()
  br label %dec_label_pc_35c40

dec_label_pc_35c40:                               ; preds = %dec_label_pc_35c3b, %dec_label_pc_35c2b
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_77ab9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

