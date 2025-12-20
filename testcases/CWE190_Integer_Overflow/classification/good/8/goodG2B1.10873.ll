@global_var_8ea9a = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]

define i32 @staticReturnsTrue.1083() local_unnamed_addr {
dec_label_pc_3d74b:
  ret i32 1
}

define i32 @staticReturnsFalse.1084() local_unnamed_addr {
dec_label_pc_3d75a:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3db80:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.1084()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3dbb9, label %dec_label_pc_3dba1

dec_label_pc_3dba1:                               ; preds = %dec_label_pc_3db80
  call void @printLine(ptr @global_var_8ea9a)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3dbb9

dec_label_pc_3dbb9:                               ; preds = %dec_label_pc_3db80, %dec_label_pc_3dba1
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue.1083()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_3dbdf, label %dec_label_pc_3dbcd

dec_label_pc_3dbcd:                               ; preds = %dec_label_pc_3dbb9
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_3dbdf

dec_label_pc_3dbdf:                               ; preds = %dec_label_pc_3dbcd, %dec_label_pc_3dbb9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

