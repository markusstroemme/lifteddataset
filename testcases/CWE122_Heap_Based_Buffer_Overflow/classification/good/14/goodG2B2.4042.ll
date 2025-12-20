@global_var_7c820 = external constant [4 x i8]
@global_var_a206c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_25b64:
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a206c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_25bbd, label %dec_label_pc_25b98

dec_label_pc_25b98:                               ; preds = %dec_label_pc_25b64
  %4 = call ptr @malloc(i32 400)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_25bbd, label %dec_label_pc_25bb3

dec_label_pc_25bb3:                               ; preds = %dec_label_pc_25b98
  call void @exit(i32 -1)
  unreachable

dec_label_pc_25bbd:                               ; preds = %dec_label_pc_25b98, %dec_label_pc_25b64
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %10 = call ptr @memcpy(ptr %9, ptr nonnull %stack_var_-424, i32 400)
  %11 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  call void @free(ptr %9)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_25c26, label %dec_label_pc_25c21

dec_label_pc_25c21:                               ; preds = %dec_label_pc_25bbd
  call void @__stack_chk_fail()
  br label %dec_label_pc_25c26

dec_label_pc_25c26:                               ; preds = %dec_label_pc_25c21, %dec_label_pc_25bbd
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

