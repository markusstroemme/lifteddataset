@global_var_85170 = external constant [21 x i8]
@global_var_85188 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8070 = external local_unnamed_addr global i32
@global_var_b8320 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_32cbb:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8070, align 4
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_32e03, label %dec_label_pc_32ceb

dec_label_pc_32ceb:                               ; preds = %dec_label_pc_32cbb
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_32e03, label %dec_label_pc_32d1a

dec_label_pc_32d1a:                               ; preds = %dec_label_pc_32ceb
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_32df3.thread6, label %dec_label_pc_32d66

dec_label_pc_32d66:                               ; preds = %dec_label_pc_32d1a
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_32df3.thread6, label %dec_label_pc_32d7a

dec_label_pc_32d7a:                               ; preds = %dec_label_pc_32d66
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_32df3.thread6, label %dec_label_pc_32d97

dec_label_pc_32d97:                               ; preds = %dec_label_pc_32d7a
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_32df9, label %dec_label_pc_32dbe

dec_label_pc_32dbe:                               ; preds = %dec_label_pc_32d97
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_32df9

dec_label_pc_32df3.thread6:                       ; preds = %dec_label_pc_32d7a, %dec_label_pc_32d66, %dec_label_pc_32d1a
  %24 = call i32 @close(i32 %3)
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_32e03

dec_label_pc_32df9:                               ; preds = %dec_label_pc_32dbe, %dec_label_pc_32d97
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_32e03

dec_label_pc_32e03:                               ; preds = %dec_label_pc_32ceb, %dec_label_pc_32df3.thread6, %dec_label_pc_32df9, %dec_label_pc_32cbb
  %27 = load i32, ptr @global_var_b8320, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_32e1e, label %dec_label_pc_32e0d

dec_label_pc_32e0d:                               ; preds = %dec_label_pc_32e03
  call void @printLine(ptr @global_var_85170)
  br label %dec_label_pc_32e50

dec_label_pc_32e1e:                               ; preds = %dec_label_pc_32e03
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %29 = icmp slt i32 %stack_var_-76.1.reload, 1
  br i1 %29, label %dec_label_pc_32e50, label %dec_label_pc_32e24

dec_label_pc_32e24:                               ; preds = %dec_label_pc_32e1e
  %30 = icmp sgt i32 %stack_var_-76.1.reload, 1073741822
  br i1 %30, label %dec_label_pc_32e41, label %dec_label_pc_32e2d

dec_label_pc_32e2d:                               ; preds = %dec_label_pc_32e24
  %31 = mul i32 %stack_var_-76.1.reload, 2
  call void @printIntLine(i32 %31)
  br label %dec_label_pc_32e50

dec_label_pc_32e41:                               ; preds = %dec_label_pc_32e24
  call void @printLine(ptr @global_var_85188)
  br label %dec_label_pc_32e50

dec_label_pc_32e50:                               ; preds = %dec_label_pc_32e41, %dec_label_pc_32e2d, %dec_label_pc_32e1e, %dec_label_pc_32e0d
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  br i1 %33, label %dec_label_pc_32e65, label %dec_label_pc_32e60

dec_label_pc_32e60:                               ; preds = %dec_label_pc_32e50
  call void @__stack_chk_fail()
  br label %dec_label_pc_32e65

dec_label_pc_32e65:                               ; preds = %dec_label_pc_32e60, %dec_label_pc_32e50
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

