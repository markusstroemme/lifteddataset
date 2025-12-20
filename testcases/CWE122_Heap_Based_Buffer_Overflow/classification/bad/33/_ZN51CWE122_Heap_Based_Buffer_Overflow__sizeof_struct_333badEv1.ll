@global_var_34bf6 = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_25c46:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-40, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_25c92, label %dec_label_pc_25c88

dec_label_pc_25c88:                               ; preds = %dec_label_pc_25c46
  call void @exit(i32 -1)
  unreachable

dec_label_pc_25c92:                               ; preds = %dec_label_pc_25c46
  store i32 1, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i64
  %6 = add i64 %5, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-40, align 8
  call void @printStructLine(ptr %8)
  %9 = bitcast ptr %8 to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_25cdf, label %dec_label_pc_25cda

dec_label_pc_25cda:                               ; preds = %dec_label_pc_25c92
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25cdf

dec_label_pc_25cdf:                               ; preds = %dec_label_pc_25cda, %dec_label_pc_25c92
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_2bb08:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_34bf6, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

