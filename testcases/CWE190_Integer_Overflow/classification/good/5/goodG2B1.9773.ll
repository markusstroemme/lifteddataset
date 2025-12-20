@global_var_86763 = external constant [21 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc050 = external local_unnamed_addr global i32
@global_var_bc2c0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36207:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_bc2c0, align 4
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3623c, label %dec_label_pc_36224

dec_label_pc_36224:                               ; preds = %dec_label_pc_36207
  call void @printLine(ptr @global_var_86763)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3623c

dec_label_pc_3623c:                               ; preds = %dec_label_pc_36207, %dec_label_pc_36224
  %2 = load i32, ptr @global_var_bc050, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3625a, label %dec_label_pc_36246

dec_label_pc_36246:                               ; preds = %dec_label_pc_3623c
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printIntLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_3625a

dec_label_pc_3625a:                               ; preds = %dec_label_pc_36246, %dec_label_pc_3623c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

