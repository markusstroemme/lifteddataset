@global_var_6a818 = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c040 = external local_unnamed_addr global i32
@global_var_9c1d8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2547e:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_9c1d8, align 4
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_254b3, label %dec_label_pc_2549b

dec_label_pc_2549b:                               ; preds = %dec_label_pc_2547e
  call void @printLine(ptr @global_var_6a818)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_254b3

dec_label_pc_254b3:                               ; preds = %dec_label_pc_2547e, %dec_label_pc_2549b
  %2 = load i32, ptr @global_var_9c040, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_254d0, label %dec_label_pc_254bd

dec_label_pc_254bd:                               ; preds = %dec_label_pc_254b3
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %4 = mul nuw nsw i32 %stack_var_-16.0.reload, %stack_var_-16.0.reload
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_254d0

dec_label_pc_254d0:                               ; preds = %dec_label_pc_254bd, %dec_label_pc_254b3
  ret void
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

declare i32 @puts(ptr) local_unnamed_addr

