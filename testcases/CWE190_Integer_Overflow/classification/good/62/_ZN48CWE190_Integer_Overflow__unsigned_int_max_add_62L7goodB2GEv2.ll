@global_var_6e7a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_49714:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_4975f, label %dec_label_pc_4974a

dec_label_pc_4974a:                               ; preds = %dec_label_pc_49714
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_4976e

dec_label_pc_4975f:                               ; preds = %dec_label_pc_49714
  call void @printLine(ptr @global_var_6e7a0)
  br label %dec_label_pc_4976e

dec_label_pc_4976e:                               ; preds = %dec_label_pc_4975f, %dec_label_pc_4974a
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_49783, label %dec_label_pc_4977e

dec_label_pc_4977e:                               ; preds = %dec_label_pc_4976e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_49783

dec_label_pc_49783:                               ; preds = %dec_label_pc_4977e, %dec_label_pc_4976e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_497cc:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 -1, ptr %arg1, align 4
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

