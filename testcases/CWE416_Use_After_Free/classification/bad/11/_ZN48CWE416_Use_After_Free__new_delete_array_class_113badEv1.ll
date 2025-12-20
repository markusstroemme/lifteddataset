@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e222:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1e2ae, label %dec_label_pc_1e244

dec_label_pc_1e244:                               ; preds = %dec_label_pc_1e222
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e25c

dec_label_pc_1e25c:                               ; preds = %dec_label_pc_1e25c, %dec_label_pc_1e244
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e29b, label %dec_label_pc_1e25c

dec_label_pc_1e29b:                               ; preds = %dec_label_pc_1e25c
  %13 = inttoptr i64 %6 to ptr
  %14 = icmp eq i64 %6, 0
  store ptr %13, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_1e2ae, label %dec_label_pc_1e2a2

dec_label_pc_1e2a2:                               ; preds = %dec_label_pc_1e29b
  %15 = inttoptr i64 %6 to ptr
  %16 = and i64 %1, 4294967295
  %17 = inttoptr i64 %16 to ptr
  call void @_ZdaPv(ptr %15, ptr %17)
  store ptr %13, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1e2ae

dec_label_pc_1e2ae:                               ; preds = %dec_label_pc_1e2a2, %dec_label_pc_1e29b, %dec_label_pc_1e222
  %18 = call i32 @globalReturnsTrue()
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i1 %19, false
  %21 = zext i1 %20 to i64
  %22 = and i32 %18, -256
  %23 = sext i32 %22 to i64
  %24 = or i64 %21, %23
  %25 = icmp eq i1 %20, false
  store i64 %24, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_1e2c9, label %dec_label_pc_1e2bc

dec_label_pc_1e2bc:                               ; preds = %dec_label_pc_1e2ae
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %26 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %26)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e2c9

dec_label_pc_1e2c9:                               ; preds = %dec_label_pc_1e2bc, %dec_label_pc_1e2ae
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

