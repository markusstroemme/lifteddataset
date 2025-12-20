@global_var_70f70 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.351() local_unnamed_addr {
dec_label_pc_15587:
  ret i32 1
}

define i32 @staticReturnsFalse.352() local_unnamed_addr {
dec_label_pc_15596:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_157c9:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.352()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_15802, label %dec_label_pc_157ea

dec_label_pc_157ea:                               ; preds = %dec_label_pc_157c9
  call void @printLine(ptr @global_var_70f70)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_15802

dec_label_pc_15802:                               ; preds = %dec_label_pc_157c9, %dec_label_pc_157ea
  %2 = call i32 @staticReturnsTrue.351()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_15823, label %dec_label_pc_15810

dec_label_pc_15810:                               ; preds = %dec_label_pc_15802
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_15823

dec_label_pc_15823:                               ; preds = %dec_label_pc_15810, %dec_label_pc_15802
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

