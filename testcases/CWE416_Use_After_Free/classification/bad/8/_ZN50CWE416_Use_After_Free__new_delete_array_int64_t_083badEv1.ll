@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.402() local_unnamed_addr {
dec_label_pc_21043:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21061:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.402()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_210d4, label %dec_label_pc_21083

dec_label_pc_21083:                               ; preds = %dec_label_pc_21061
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2109b

dec_label_pc_2109b:                               ; preds = %dec_label_pc_2109b, %dec_label_pc_21083
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_210c1, label %dec_label_pc_2109b

dec_label_pc_210c1:                               ; preds = %dec_label_pc_2109b
  %11 = inttoptr i64 %6 to ptr
  %12 = icmp eq i64 %6, 0
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_210d4, label %dec_label_pc_210c8

dec_label_pc_210c8:                               ; preds = %dec_label_pc_210c1
  %13 = inttoptr i64 %6 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_210d4

dec_label_pc_210d4:                               ; preds = %dec_label_pc_210c8, %dec_label_pc_210c1, %dec_label_pc_21061
  %16 = call i32 @staticReturnsTrue.402()
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i1 %17, false
  %19 = zext i1 %18 to i64
  %20 = and i32 %16, -256
  %21 = sext i32 %20 to i64
  %22 = or i64 %19, %21
  %23 = icmp eq i1 %18, false
  store i64 %22, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_210f1, label %dec_label_pc_210e2

dec_label_pc_210e2:                               ; preds = %dec_label_pc_210d4
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %24 = bitcast ptr %stack_var_-24.0.reload to ptr
  %25 = load i64, ptr %24, align 8
  call void @printLongLongLine(i64 %25)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_210f1

dec_label_pc_210f1:                               ; preds = %dec_label_pc_210e2, %dec_label_pc_210d4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

