@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2902b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  %4 = inttoptr i64 %2 to ptr
  %5 = call ptr @memcpy(ptr %4, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %6 = load i64, ptr %4, align 8
  call void @printLongLongLine(i64 %6)
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %dec_label_pc_290e6, label %dec_label_pc_290d7

dec_label_pc_290d7:                               ; preds = %dec_label_pc_2902b
  %8 = ptrtoint ptr %stack_var_-824 to i64
  %9 = and i64 %8, 4294967288
  %10 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %4, ptr %10)
  br label %dec_label_pc_290e6

dec_label_pc_290e6:                               ; preds = %dec_label_pc_290d7, %dec_label_pc_2902b
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_290fb, label %dec_label_pc_290f6

dec_label_pc_290f6:                               ; preds = %dec_label_pc_290e6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_290fb

dec_label_pc_290fb:                               ; preds = %dec_label_pc_290f6, %dec_label_pc_290e6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

