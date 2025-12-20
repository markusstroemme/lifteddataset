@global_var_47aed = external constant [3 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_36763:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_3679a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @anon0(ptr %2)
  store i64 0, ptr %stack_var_-72, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %6, i32 %5, ptr @global_var_47aed, ptr %4)
  call void @printLine(ptr %4)
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %dec_label_pc_36856, label %dec_label_pc_3684a

dec_label_pc_3684a:                               ; preds = %dec_label_pc_3679a
  %9 = zext i32 %5 to i64
  %10 = inttoptr i64 %3 to ptr
  %11 = inttoptr i64 %9 to ptr
  call void @_ZdaPv(ptr %10, ptr %11)
  br label %dec_label_pc_36856

dec_label_pc_36856:                               ; preds = %dec_label_pc_3684a, %dec_label_pc_3679a
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_3686b, label %dec_label_pc_36866

dec_label_pc_36866:                               ; preds = %dec_label_pc_36856
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3686b

dec_label_pc_3686b:                               ; preds = %dec_label_pc_36866, %dec_label_pc_36856
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

