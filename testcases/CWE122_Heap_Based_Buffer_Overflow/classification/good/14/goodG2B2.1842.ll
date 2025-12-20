@global_var_5e04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15ae6:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_15b20, label %dec_label_pc_15b16

dec_label_pc_15b16:                               ; preds = %dec_label_pc_15ae6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15b20:                               ; preds = %dec_label_pc_15ae6
  %4 = load i32, ptr @global_var_5e04c, align 4
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_15b4c, label %dec_label_pc_15b2b

dec_label_pc_15b2b:                               ; preds = %dec_label_pc_15b20
  %7 = call ptr @memset(ptr %1, i32 65, i32 49)
  %8 = ptrtoint ptr %1 to i64
  %9 = add i64 %8, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  br label %dec_label_pc_15b4c

dec_label_pc_15b4c:                               ; preds = %dec_label_pc_15b2b, %dec_label_pc_15b20
  %11 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %12 = call i32 @strlen(ptr %11)
  %13 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %1, i32 %12)
  call void @printLine(ptr %11)
  call void @free(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_15bd5, label %dec_label_pc_15bd0

dec_label_pc_15bd0:                               ; preds = %dec_label_pc_15b4c
  call void @__stack_chk_fail()
  br label %dec_label_pc_15bd5

dec_label_pc_15bd5:                               ; preds = %dec_label_pc_15bd0, %dec_label_pc_15b4c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

