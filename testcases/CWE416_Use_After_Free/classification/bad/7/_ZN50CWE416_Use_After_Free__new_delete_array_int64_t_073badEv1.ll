@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20d92:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63054, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_20e02, label %dec_label_pc_20db1

dec_label_pc_20db1:                               ; preds = %dec_label_pc_20d92
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_20dc9

dec_label_pc_20dc9:                               ; preds = %dec_label_pc_20dc9, %dec_label_pc_20db1
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i64 5, ptr %8, align 8
  %9 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_20def, label %dec_label_pc_20dc9

dec_label_pc_20def:                               ; preds = %dec_label_pc_20dc9
  %10 = inttoptr i64 %5 to ptr
  %11 = icmp eq i64 %5, 0
  store ptr %10, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_20e02, label %dec_label_pc_20df6

dec_label_pc_20df6:                               ; preds = %dec_label_pc_20def
  %12 = inttoptr i64 %5 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  store ptr %10, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_20e02

dec_label_pc_20e02:                               ; preds = %dec_label_pc_20df6, %dec_label_pc_20def, %dec_label_pc_20d92
  %15 = load i32, ptr @global_var_63054, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp eq i32 %15, 5
  %18 = icmp eq i1 %17, false
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_20e1c, label %dec_label_pc_20e0d

dec_label_pc_20e0d:                               ; preds = %dec_label_pc_20e02
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %19 = bitcast ptr %stack_var_-24.0.reload to ptr
  %20 = load i64, ptr %19, align 8
  call void @printLongLongLine(i64 %20)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20e1c

dec_label_pc_20e1c:                               ; preds = %dec_label_pc_20e0d, %dec_label_pc_20e02
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

