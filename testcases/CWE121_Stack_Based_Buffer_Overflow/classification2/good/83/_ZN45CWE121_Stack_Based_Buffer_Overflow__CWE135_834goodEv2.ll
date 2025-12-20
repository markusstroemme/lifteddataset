@global_var_c0100 = external constant [43 x i32]
@0 = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_99d46:
  store i64 ptrtoint (ptr @global_var_c0100 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_99d72:
  %0 = bitcast ptr %result to ptr
  %1 = call i32 @wcslen(ptr %0)
  %2 = sext i32 %1 to i64
  %3 = add nsw i64 %2, 1
  %4 = trunc i64 %3 to i32
  %5 = call ptr @calloc(i32 %4, i32 4)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_99dbf, label %dec_label_pc_99db5

dec_label_pc_99db5:                               ; preds = %dec_label_pc_99d72
  call void @exit(i32 -1)
  unreachable

dec_label_pc_99dbf:                               ; preds = %dec_label_pc_99d72
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
dec_label_pc_99fd4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, ptr null)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9a02a, label %dec_label_pc_9a025

dec_label_pc_9a025:                               ; preds = %dec_label_pc_99fd4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9a02a

dec_label_pc_9a02a:                               ; preds = %dec_label_pc_9a025, %dec_label_pc_99fd4
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

