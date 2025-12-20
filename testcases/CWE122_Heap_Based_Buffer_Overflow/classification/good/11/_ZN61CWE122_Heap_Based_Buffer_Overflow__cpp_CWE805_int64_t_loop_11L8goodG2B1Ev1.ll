@global_var_320 = external constant [20 x i8]
@global_var_5ee84 = external constant [21 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d151:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_1d199, label %dec_label_pc_1d188

dec_label_pc_1d188:                               ; preds = %dec_label_pc_1d151
  call void @printLine(ptr @global_var_5ee84)
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_1d1aa

dec_label_pc_1d199:                               ; preds = %dec_label_pc_1d151
  %7 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %7, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_1d1aa

dec_label_pc_1d1aa:                               ; preds = %dec_label_pc_1d199, %dec_label_pc_1d188
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 100)
  %10 = add i64 %8, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1d1ce

dec_label_pc_1d1ce:                               ; preds = %dec_label_pc_1d1ce, %dec_label_pc_1d1aa
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
  br i1 %exitcond, label %dec_label_pc_1d20b, label %dec_label_pc_1d1ce

dec_label_pc_1d20b:                               ; preds = %dec_label_pc_1d1ce
  %18 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %19 = load i64, ptr %18, align 8
  call void @printLongLongLine(i64 %19)
  %20 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %20, label %dec_label_pc_1d236, label %dec_label_pc_1d227

dec_label_pc_1d227:                               ; preds = %dec_label_pc_1d20b
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %18, ptr %22)
  br label %dec_label_pc_1d236

dec_label_pc_1d236:                               ; preds = %dec_label_pc_1d227, %dec_label_pc_1d20b
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %2, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1d24b, label %dec_label_pc_1d246

dec_label_pc_1d246:                               ; preds = %dec_label_pc_1d236
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d24b

dec_label_pc_1d24b:                               ; preds = %dec_label_pc_1d246, %dec_label_pc_1d236
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4d978:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4d99b, label %dec_label_pc_4d98f

dec_label_pc_4d98f:                               ; preds = %dec_label_pc_4d978
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4d99b

dec_label_pc_4d99b:                               ; preds = %dec_label_pc_4d98f, %dec_label_pc_4d978
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_4de97:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

