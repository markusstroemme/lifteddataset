@badStatic = external local_unnamed_addr global i32
@global_var_44d70 = external constant [4 x i8]

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_e45b:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_e494, label %dec_label_pc_e475

dec_label_pc_e475:                                ; preds = %dec_label_pc_e45b
  %2 = call ptr @malloc(i32 10)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_e494, label %dec_label_pc_e48a

dec_label_pc_e48a:                                ; preds = %dec_label_pc_e475
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e494:                                ; preds = %dec_label_pc_e475, %dec_label_pc_e45b
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_e49a:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @badStatic, align 4
  %1 = call ptr @anon1(ptr null)
  store i64 0, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %1 to ptr
  %3 = call ptr @memcpy(ptr %2, ptr nonnull %stack_var_-56, i32 40)
  %4 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %4)
  call void @free(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_e545, label %dec_label_pc_e540

dec_label_pc_e540:                                ; preds = %dec_label_pc_e49a
  call void @__stack_chk_fail()
  br label %dec_label_pc_e545

dec_label_pc_e545:                                ; preds = %dec_label_pc_e540, %dec_label_pc_e49a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

