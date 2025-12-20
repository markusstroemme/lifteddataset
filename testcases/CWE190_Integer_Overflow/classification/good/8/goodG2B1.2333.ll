@global_var_705f0 = external constant [21 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.229() local_unnamed_addr {
dec_label_pc_ff9a:
  ret i32 1
}

define i32 @staticReturnsFalse.230() local_unnamed_addr {
dec_label_pc_ffa9:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_101c5:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.230()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_101fe, label %dec_label_pc_101e6

dec_label_pc_101e6:                               ; preds = %dec_label_pc_101c5
  call void @printLine(ptr @global_var_705f0)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_101fe

dec_label_pc_101fe:                               ; preds = %dec_label_pc_101c5, %dec_label_pc_101e6
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.229()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_10224, label %dec_label_pc_10212

dec_label_pc_10212:                               ; preds = %dec_label_pc_101fe
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_10224

dec_label_pc_10224:                               ; preds = %dec_label_pc_10212, %dec_label_pc_101fe
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

