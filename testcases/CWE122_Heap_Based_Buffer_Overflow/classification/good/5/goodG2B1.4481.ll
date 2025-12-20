@global_var_7a029 = external constant [21 x i8]
@global_var_7c820 = external constant [4 x i8]
@global_var_a21f0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_295f7:
  %stack_var_-432.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a21f0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2963b, label %dec_label_pc_2962a

dec_label_pc_2962a:                               ; preds = %dec_label_pc_295f7
  call void @printLine(ptr @global_var_7a029)
  store i64 0, ptr %stack_var_-432.0.reg2mem, align 8
  br label %dec_label_pc_29660

dec_label_pc_2963b:                               ; preds = %dec_label_pc_295f7
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-432.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_29660, label %dec_label_pc_29656

dec_label_pc_29656:                               ; preds = %dec_label_pc_2963b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_29660:                               ; preds = %dec_label_pc_2963b, %dec_label_pc_2962a
  %stack_var_-432.0.reload = load i64, ptr %stack_var_-432.0.reg2mem, align 8
  %7 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %7, i64 0, i64 50)
  %8 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-424, i32 400)
  %10 = inttoptr i64 %stack_var_-432.0.reload to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  call void @free(ptr %8)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_296c9, label %dec_label_pc_296c4

dec_label_pc_296c4:                               ; preds = %dec_label_pc_29660
  call void @__stack_chk_fail()
  br label %dec_label_pc_296c9

dec_label_pc_296c9:                               ; preds = %dec_label_pc_296c4, %dec_label_pc_29660
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

