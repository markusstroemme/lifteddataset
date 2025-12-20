@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d066:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1d0ae, label %dec_label_pc_1d09d

dec_label_pc_1d09d:                               ; preds = %dec_label_pc_1d066
  %7 = call i64 @_Znam(i64 400)
  store i64 %7, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_1d0ae

dec_label_pc_1d0ae:                               ; preds = %dec_label_pc_1d09d, %dec_label_pc_1d066
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 100)
  %10 = add i64 %8, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1d0d2

dec_label_pc_1d0d2:                               ; preds = %dec_label_pc_1d0d2, %dec_label_pc_1d0ae
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %11 = mul i64 %storemerge1.reload, 8
  %12 = add i64 %11, %stack_var_-840.0.reload
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d10f, label %dec_label_pc_1d0d2

dec_label_pc_1d10f:                               ; preds = %dec_label_pc_1d0d2
  %18 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  %20 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %20, label %dec_label_pc_1d13a, label %dec_label_pc_1d12b

dec_label_pc_1d12b:                               ; preds = %dec_label_pc_1d10f
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %18, ptr %22)
  br label %dec_label_pc_1d13a

dec_label_pc_1d13a:                               ; preds = %dec_label_pc_1d12b, %dec_label_pc_1d10f
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %2, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1d14f, label %dec_label_pc_1d14a

dec_label_pc_1d14a:                               ; preds = %dec_label_pc_1d13a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d14f

dec_label_pc_1d14f:                               ; preds = %dec_label_pc_1d14a, %dec_label_pc_1d13a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4de88:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

