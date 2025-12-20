@0 = external global i32
@global_var_bd304 = external constant [5 x i32]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_762db:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = bitcast ptr %stack_var_-40 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load ptr, ptr %stack_var_-40, align 8
  %4 = call i32 @wcslen(ptr %3)
  %5 = add i32 %4, 1
  %6 = call ptr @calloc(i32 %5, i32 4)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_76344, label %dec_label_pc_7633a

dec_label_pc_7633a:                               ; preds = %dec_label_pc_762db
  call void @exit(i32 -1)
  unreachable

dec_label_pc_76344:                               ; preds = %dec_label_pc_762db
  %9 = bitcast ptr %6 to ptr
  %10 = load ptr, ptr %stack_var_-40, align 8
  %11 = call ptr @wcscpy(ptr %9, ptr %10)
  call void @printWLine(ptr %9)
  call void @free(ptr %6)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_76384, label %dec_label_pc_7637f

dec_label_pc_7637f:                               ; preds = %dec_label_pc_76344
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_76384

dec_label_pc_76384:                               ; preds = %dec_label_pc_7637f, %dec_label_pc_76344
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_7645c:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_7648b, label %dec_label_pc_76481

dec_label_pc_76481:                               ; preds = %dec_label_pc_7645c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7648b:                               ; preds = %dec_label_pc_7645c
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = ptrtoint ptr %arg1 to i64
  %9 = bitcast ptr %arg1 to ptr
  store i64 %5, ptr %9, align 8
  ret i64 %8
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

