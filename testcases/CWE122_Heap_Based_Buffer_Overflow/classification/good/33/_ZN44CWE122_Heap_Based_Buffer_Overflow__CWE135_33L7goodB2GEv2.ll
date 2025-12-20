@0 = external global i32
@global_var_bd304 = external constant [5 x i32]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_75d37:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-48, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_75d81, label %dec_label_pc_75d77

dec_label_pc_75d77:                               ; preds = %dec_label_pc_75d37
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75d81:                               ; preds = %dec_label_pc_75d37
  %5 = call ptr @wmemset(ptr %2, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-48, align 8
  %10 = call i32 @wcslen(ptr %9)
  %11 = add i32 %10, 1
  %12 = call ptr @calloc(i32 %11, i32 4)
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_75df4, label %dec_label_pc_75dea

dec_label_pc_75dea:                               ; preds = %dec_label_pc_75d81
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75df4:                               ; preds = %dec_label_pc_75d81
  %15 = bitcast ptr %12 to ptr
  %16 = call ptr @wcscpy(ptr %15, ptr %9)
  call void @printWLine(ptr %15)
  call void @free(ptr %12)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_75e34, label %dec_label_pc_75e2f

dec_label_pc_75e2f:                               ; preds = %dec_label_pc_75df4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75e34

dec_label_pc_75e34:                               ; preds = %dec_label_pc_75e2f, %dec_label_pc_75df4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_9feb2:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9fee4, label %dec_label_pc_9fec9

dec_label_pc_9fec9:                               ; preds = %dec_label_pc_9feb2
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_bd304)
  br label %dec_label_pc_9fee4

dec_label_pc_9fee4:                               ; preds = %dec_label_pc_9fec9, %dec_label_pc_9feb2
  ret void
}

declare ptr @calloc(i32, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

