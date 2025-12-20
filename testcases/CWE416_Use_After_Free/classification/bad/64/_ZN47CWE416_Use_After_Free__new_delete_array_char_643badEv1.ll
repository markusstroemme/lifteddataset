@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c3de:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %dec_label_pc_1c445, label %dec_label_pc_1c439

dec_label_pc_1c439:                               ; preds = %dec_label_pc_1c3de
  %8 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr %8, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1c445

dec_label_pc_1c445:                               ; preds = %dec_label_pc_1c439, %dec_label_pc_1c3de
  %9 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_1c466, label %dec_label_pc_1c461

dec_label_pc_1c461:                               ; preds = %dec_label_pc_1c445
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c466

dec_label_pc_1c466:                               ; preds = %dec_label_pc_1c461, %dec_label_pc_1c445
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c57c:
  %0 = bitcast ptr %arg1 to ptr
  call void @printLine(ptr %0)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

