@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fec2:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon1(ptr null)
  store i64 0, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %1 to ptr
  %3 = call ptr @memcpy(ptr %2, ptr nonnull %stack_var_-56, i32 40)
  %4 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %4)
  call void @free(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_ff63, label %dec_label_pc_ff5e

dec_label_pc_ff5e:                                ; preds = %dec_label_pc_fec2
  call void @__stack_chk_fail()
  br label %dec_label_pc_ff63

dec_label_pc_ff63:                                ; preds = %dec_label_pc_ff5e, %dec_label_pc_fec2
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1001d:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1004c, label %dec_label_pc_10042

dec_label_pc_10042:                               ; preds = %dec_label_pc_1001d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1004c:                               ; preds = %dec_label_pc_1001d
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
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

