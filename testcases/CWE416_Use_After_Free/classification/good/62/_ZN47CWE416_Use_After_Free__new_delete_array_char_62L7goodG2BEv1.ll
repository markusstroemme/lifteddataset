@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c005:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load ptr, ptr %stack_var_-24, align 8
  call void @printLine(ptr %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_1c055, label %dec_label_pc_1c050

dec_label_pc_1c050:                               ; preds = %dec_label_pc_1c005
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c055

dec_label_pc_1c055:                               ; preds = %dec_label_pc_1c050, %dec_label_pc_1c005
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c11b:
  %0 = call i64 @_Znam(i64 100)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  %2 = call ptr @memset(ptr inttoptr (i64 100 to ptr), i32 65, i32 99)
  store i8 0, ptr inttoptr (i64 199 to ptr), align 1
  ret i64 199
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

