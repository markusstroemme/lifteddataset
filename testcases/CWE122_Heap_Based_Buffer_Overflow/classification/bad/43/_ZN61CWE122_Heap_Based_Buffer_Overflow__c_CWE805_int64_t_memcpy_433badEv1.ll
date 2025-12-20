@global_var_7c82d = external constant [5 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_4dd09:
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 400
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_4dd46:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-832 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-832, align 8
  %1 = bitcast ptr %stack_var_-832 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %3, i64 0, i64 100)
  %4 = load i64, ptr %stack_var_-832, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = load i64, ptr %stack_var_-832, align 8
  %8 = inttoptr i64 %7 to ptr
  %9 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %9)
  %10 = load i64, ptr %stack_var_-832, align 8
  %11 = inttoptr i64 %10 to ptr
  call void @free(ptr %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_4dde9, label %dec_label_pc_4dde4

dec_label_pc_4dde4:                               ; preds = %dec_label_pc_4dd46
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4dde9

dec_label_pc_4dde9:                               ; preds = %dec_label_pc_4dde4, %dec_label_pc_4dd46
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

