@global_var_c0290 = external constant [43 x i32]
@0 = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_9a16a:
  store i64 ptrtoint (ptr @global_var_c0290 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_9a196:
  %0 = bitcast ptr %result to ptr
  %1 = call i32 @wcslen(ptr %0)
  %2 = sext i32 %1 to i64
  %3 = add nsw i64 %2, 1
  %4 = trunc i64 %3 to i32
  %5 = call ptr @calloc(i32 %4, i32 4)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_9a1e3, label %dec_label_pc_9a1d9

dec_label_pc_9a1d9:                               ; preds = %dec_label_pc_9a196
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9a1e3:                               ; preds = %dec_label_pc_9a196
  %8 = bitcast ptr %5 to ptr
  %9 = inttoptr i64 %3 to ptr
  %10 = mul i32 %1, 4
  %11 = add i32 %10, 4
  %12 = call ptr @memcpy(ptr %5, ptr %9, i32 %11)
  call void @printWLine(ptr %8)
  call void @free(ptr %5)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_9a448:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, ptr null)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9a4be, label %dec_label_pc_9a488

dec_label_pc_9a488:                               ; preds = %dec_label_pc_9a448
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9a4be

dec_label_pc_9a4be:                               ; preds = %dec_label_pc_9a488, %dec_label_pc_9a448
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

