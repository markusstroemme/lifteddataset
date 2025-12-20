@global_var_87d08 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4fb1c:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2147483647, ptr %stack_var_-20, align 4
  call void @anon0(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_4fb66, label %dec_label_pc_4fb61

dec_label_pc_4fb61:                               ; preds = %dec_label_pc_4fb1c
  call void @__stack_chk_fail()
  br label %dec_label_pc_4fb66

dec_label_pc_4fb66:                               ; preds = %dec_label_pc_4fb61, %dec_label_pc_4fb1c
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_4fbe5:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 46339
  %3 = icmp ugt i32 %.off, 92678
  br i1 %3, label %dec_label_pc_4fc2e, label %dec_label_pc_4fc19

dec_label_pc_4fc19:                               ; preds = %dec_label_pc_4fbe5
  %4 = mul i32 %2, %2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_4fc3e

dec_label_pc_4fc2e:                               ; preds = %dec_label_pc_4fbe5
  call void @printLine(ptr @global_var_87d08)
  br label %dec_label_pc_4fc3e

dec_label_pc_4fc3e:                               ; preds = %dec_label_pc_4fc2e, %dec_label_pc_4fc19
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

