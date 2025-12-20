@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20d80:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_20dd2, label %dec_label_pc_20dcd

dec_label_pc_20dcd:                               ; preds = %dec_label_pc_20d80
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20dd2

dec_label_pc_20dd2:                               ; preds = %dec_label_pc_20dcd, %dec_label_pc_20d80
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_20ecb:
  %0 = alloca i64, align 8
  %1 = alloca i1, align 1
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %2 = load i64, ptr %0, align 8
  %3 = load i1, ptr %1, align 1
  %4 = ptrtoint ptr %arg1 to i64
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = call i64 @__readfsqword(i64 40)
  %7 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 100)
  %8 = add i64 %5, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_20f33

dec_label_pc_20f33:                               ; preds = %dec_label_pc_20f33, %dec_label_pc_20ecb
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 8
  %10 = add i64 %9, %4
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_20f70, label %dec_label_pc_20f33

dec_label_pc_20f70:                               ; preds = %dec_label_pc_20f33
  %16 = select i1 %3, i64 -800, i64 800
  %17 = ptrtoint ptr %stack_var_-824 to i64
  %18 = add i64 %16, %17
  call void @printLongLongLine(i64 %18)
  %19 = icmp eq ptr %arg1, null
  br i1 %19, label %dec_label_pc_20f9b, label %dec_label_pc_20f8c

dec_label_pc_20f8c:                               ; preds = %dec_label_pc_20f70
  %20 = and i64 %2, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %21)
  br label %dec_label_pc_20f9b

dec_label_pc_20f9b:                               ; preds = %dec_label_pc_20f8c, %dec_label_pc_20f70
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %6, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_20fb0, label %dec_label_pc_20fab

dec_label_pc_20fab:                               ; preds = %dec_label_pc_20f9b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20fb0

dec_label_pc_20fb0:                               ; preds = %dec_label_pc_20fab, %dec_label_pc_20f9b
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

