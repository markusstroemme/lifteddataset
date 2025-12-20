@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_1f7d8:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_1f7ff:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-840 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-840, align 8
  %4 = bitcast ptr %stack_var_-840 to ptr
  %5 = call i64 @anon0(ptr nonnull %4)
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = load i64, ptr %stack_var_-840, align 8
  %8 = add i64 %2, -816
  store i64 %7, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1f85b

dec_label_pc_1f85b:                               ; preds = %dec_label_pc_1f85b, %dec_label_pc_1f7ff
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 8
  %10 = add i64 %9, %.reload
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %10 to ptr
  store i64 %13, ptr %14, align 8
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %16 = load i64, ptr %stack_var_-840, align 8
  %exitcond = icmp eq i64 %15, 100
  store i64 %16, ptr %.reg2mem, align 8
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1f894, label %dec_label_pc_1f85b

dec_label_pc_1f894:                               ; preds = %dec_label_pc_1f85b
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  call void @printLongLongLine(i64 %18)
  %19 = load i64, ptr %stack_var_-840, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %dec_label_pc_1f8c1, label %dec_label_pc_1f8b2

dec_label_pc_1f8b2:                               ; preds = %dec_label_pc_1f894
  %21 = inttoptr i64 %19 to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_1f8c1

dec_label_pc_1f8c1:                               ; preds = %dec_label_pc_1f8b2, %dec_label_pc_1f894
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %3, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_1f8d6, label %dec_label_pc_1f8d1

dec_label_pc_1f8d1:                               ; preds = %dec_label_pc_1f8c1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1f8d6

dec_label_pc_1f8d6:                               ; preds = %dec_label_pc_1f8d1, %dec_label_pc_1f8c1
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

