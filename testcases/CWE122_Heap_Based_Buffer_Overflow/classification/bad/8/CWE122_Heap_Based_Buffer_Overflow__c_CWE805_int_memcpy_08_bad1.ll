@global_var_7c820 = external constant [4 x i8]

define i32 @staticReturnsTrue.390() local_unnamed_addr {
dec_label_pc_24b48:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_24b66:
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.390()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_24bc2, label %dec_label_pc_24b9d

dec_label_pc_24b9d:                               ; preds = %dec_label_pc_24b66
  %3 = call ptr @malloc(i32 200)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_24bc2, label %dec_label_pc_24bb8

dec_label_pc_24bb8:                               ; preds = %dec_label_pc_24b9d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_24bc2:                               ; preds = %dec_label_pc_24b9d, %dec_label_pc_24b66
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %9 = call ptr @memcpy(ptr %8, ptr nonnull %stack_var_-424, i32 400)
  %10 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  call void @free(ptr %8)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_24c2b, label %dec_label_pc_24c26

dec_label_pc_24c26:                               ; preds = %dec_label_pc_24bc2
  call void @__stack_chk_fail()
  br label %dec_label_pc_24c2b

dec_label_pc_24c2b:                               ; preds = %dec_label_pc_24c26, %dec_label_pc_24bc2
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

