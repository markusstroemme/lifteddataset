@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_25562:
  %stack_var_-432.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_255be, label %dec_label_pc_25599

dec_label_pc_25599:                               ; preds = %dec_label_pc_25562
  %3 = call ptr @malloc(i32 200)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-432.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_255e3, label %dec_label_pc_255b4

dec_label_pc_255b4:                               ; preds = %dec_label_pc_25599
  call void @exit(i32 -1)
  unreachable

dec_label_pc_255be:                               ; preds = %dec_label_pc_25562
  %6 = call ptr @malloc(i32 400)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-432.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_255e3, label %dec_label_pc_255d9

dec_label_pc_255d9:                               ; preds = %dec_label_pc_255be
  call void @exit(i32 -1)
  unreachable

dec_label_pc_255e3:                               ; preds = %dec_label_pc_255be, %dec_label_pc_25599
  %stack_var_-432.0.in.reload = load ptr, ptr %stack_var_-432.0.in.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 50)
  %10 = call ptr @memcpy(ptr %stack_var_-432.0.in.reload, ptr nonnull %stack_var_-424, i32 400)
  %11 = bitcast ptr %stack_var_-432.0.in.reload to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  call void @free(ptr %stack_var_-432.0.in.reload)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_2564c, label %dec_label_pc_25647

dec_label_pc_25647:                               ; preds = %dec_label_pc_255e3
  call void @__stack_chk_fail()
  br label %dec_label_pc_2564c

dec_label_pc_2564c:                               ; preds = %dec_label_pc_25647, %dec_label_pc_255e3
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

