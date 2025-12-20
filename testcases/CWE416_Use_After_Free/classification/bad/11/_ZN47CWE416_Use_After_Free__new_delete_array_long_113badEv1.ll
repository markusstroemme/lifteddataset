@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27bf7:
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
  br i1 %5, label %dec_label_pc_27c6a, label %dec_label_pc_27c19

dec_label_pc_27c19:                               ; preds = %dec_label_pc_27bf7
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_27c31

dec_label_pc_27c31:                               ; preds = %dec_label_pc_27c31, %dec_label_pc_27c19
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27c57, label %dec_label_pc_27c31

dec_label_pc_27c57:                               ; preds = %dec_label_pc_27c31
  %11 = inttoptr i64 %6 to ptr
  %12 = icmp eq i64 %6, 0
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_27c6a, label %dec_label_pc_27c5e

dec_label_pc_27c5e:                               ; preds = %dec_label_pc_27c57
  %13 = inttoptr i64 %6 to ptr
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_27c6a

dec_label_pc_27c6a:                               ; preds = %dec_label_pc_27c5e, %dec_label_pc_27c57, %dec_label_pc_27bf7
  %16 = call i32 @globalReturnsTrue()
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i1 %17, false
  %19 = zext i1 %18 to i64
  %20 = and i32 %16, -256
  %21 = sext i32 %20 to i64
  %22 = or i64 %19, %21
  %23 = icmp eq i1 %18, false
  store i64 %22, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_27c87, label %dec_label_pc_27c78

dec_label_pc_27c78:                               ; preds = %dec_label_pc_27c6a
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %24 = bitcast ptr %stack_var_-24.0.reload to ptr
  %25 = load i64, ptr %24, align 8
  call void @printLongLine(i64 %25)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_27c87

dec_label_pc_27c87:                               ; preds = %dec_label_pc_27c78, %dec_label_pc_27c6a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

