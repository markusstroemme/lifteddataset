@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3db70:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3dcbc, label %dec_label_pc_3dba4

dec_label_pc_3dba4:                               ; preds = %dec_label_pc_3db70
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_3dcbc, label %dec_label_pc_3dbd3

dec_label_pc_3dbd3:                               ; preds = %dec_label_pc_3dba4
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3dcac.thread6, label %dec_label_pc_3dc1f

dec_label_pc_3dc1f:                               ; preds = %dec_label_pc_3dbd3
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3dcac.thread6, label %dec_label_pc_3dc33

dec_label_pc_3dc33:                               ; preds = %dec_label_pc_3dc1f
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_3dcac.thread6, label %dec_label_pc_3dc50

dec_label_pc_3dc50:                               ; preds = %dec_label_pc_3dc33
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_3dcb2, label %dec_label_pc_3dc77

dec_label_pc_3dc77:                               ; preds = %dec_label_pc_3dc50
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3dcb2

dec_label_pc_3dcac.thread6:                       ; preds = %dec_label_pc_3dc33, %dec_label_pc_3dc1f, %dec_label_pc_3dbd3
  %24 = call i32 @close(i32 %3)
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3dcbc

dec_label_pc_3dcb2:                               ; preds = %dec_label_pc_3dc77, %dec_label_pc_3dc50
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3dcbc

dec_label_pc_3dcbc:                               ; preds = %dec_label_pc_3dba4, %dec_label_pc_3dcac.thread6, %dec_label_pc_3dcb2, %dec_label_pc_3db70
  %27 = call i32 @globalReturnsTrue()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_3dcdd, label %dec_label_pc_3dcca

dec_label_pc_3dcca:                               ; preds = %dec_label_pc_3dcbc
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %29 = mul i32 %stack_var_-76.1.reload, %stack_var_-76.1.reload
  call void @printIntLine(i32 %29)
  br label %dec_label_pc_3dcdd

dec_label_pc_3dcdd:                               ; preds = %dec_label_pc_3dcca, %dec_label_pc_3dcbc
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_3dcf2, label %dec_label_pc_3dced

dec_label_pc_3dced:                               ; preds = %dec_label_pc_3dcdd
  call void @__stack_chk_fail()
  br label %dec_label_pc_3dcf2

dec_label_pc_3dcf2:                               ; preds = %dec_label_pc_3dced, %dec_label_pc_3dcdd
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
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

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

