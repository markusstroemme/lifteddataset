define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_20e41:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_20e70, label %dec_label_pc_20e66

dec_label_pc_20e66:                               ; preds = %dec_label_pc_20e41
  call void @exit(i32 -1)
  unreachable

dec_label_pc_20e70:                               ; preds = %dec_label_pc_20e41
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  ret ptr %3
}

define void @anon1() local_unnamed_addr {
dec_label_pc_20e7d:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = bitcast ptr %1 to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-120, i32 100)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %1)
  call void @free(ptr %4)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_20f1a, label %dec_label_pc_20f15

dec_label_pc_20f15:                               ; preds = %dec_label_pc_20e7d
  call void @__stack_chk_fail()
  br label %dec_label_pc_20f1a

dec_label_pc_20f1a:                               ; preds = %dec_label_pc_20f15, %dec_label_pc_20e7d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

