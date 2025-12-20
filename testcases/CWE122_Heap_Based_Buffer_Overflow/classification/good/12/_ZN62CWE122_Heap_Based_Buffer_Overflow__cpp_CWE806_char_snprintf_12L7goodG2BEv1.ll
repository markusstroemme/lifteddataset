@global_var_47a6f = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_346a4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %2)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %9, i32 %8, ptr @global_var_47a6f, ptr %2)
  call void @printLine(ptr %2)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %dec_label_pc_347a2, label %dec_label_pc_34796

dec_label_pc_34796:                               ; preds = %dec_label_pc_346a4
  %12 = zext i32 %8 to i64
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %4, ptr %13)
  br label %dec_label_pc_347a2

dec_label_pc_347a2:                               ; preds = %dec_label_pc_34796, %dec_label_pc_346a4
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_347b7, label %dec_label_pc_347b2

dec_label_pc_347b2:                               ; preds = %dec_label_pc_347a2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_347b7

dec_label_pc_347b7:                               ; preds = %dec_label_pc_347b2, %dec_label_pc_347a2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3aaeb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

